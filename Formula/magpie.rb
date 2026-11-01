class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2618/magpie-cli-darwin-arm64"
      sha256 "8dcc6baf4f88771567712bead8e48d4e25672c75b41ea66618e2e2e883262704"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2618/magpie-cli-darwin-amd64"
      sha256 "564eca162e1472987a9a42637104c38414fc73d8ca35798b674fd1c36da35fca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2618/magpie-cli-linux-arm64"
      sha256 "ca4e11f77802d229251e278176247b849ad11c0811f7ee7fa0d2278b00020ad5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2618/magpie-cli-linux-amd64"
      sha256 "993831188d46eb61b42373280bb53739835efc294b71d0893a026285509c7b16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

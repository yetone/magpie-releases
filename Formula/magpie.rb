class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3638/magpie-cli-darwin-arm64"
      sha256 "9b0712770007fd0bafa3dbbd5759587efda08010a2569759e2cf6ea02e18b917"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3638/magpie-cli-darwin-amd64"
      sha256 "030b166b9045e7e4e90b8c7275558c77c0d90b27018e86c7454417102e83f48e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3638/magpie-cli-linux-arm64"
      sha256 "68028dd909c4cbecb7d8e1b1e70e8203f7173118db50d872d1841b5de424966c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3638/magpie-cli-linux-amd64"
      sha256 "7e58e098fd8f67b968ebf503c64bf581f8a7cd1fe4147eddae35f436377676cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

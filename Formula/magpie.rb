class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2225/magpie-cli-darwin-arm64"
      sha256 "bcd32e5ce170f8a9218baafe8f235952192bdba18804111aa2bc954280c4b755"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2225/magpie-cli-darwin-amd64"
      sha256 "5612eb19582b6ff9aa09ce172ac8df8524870802337e2d454b6d6f5a10b4c27a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2225/magpie-cli-linux-arm64"
      sha256 "bc41d733a66a9a1bbabb04b79a96b778a4d3ac8285ddc55631e4473fc9f1137f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2225/magpie-cli-linux-amd64"
      sha256 "0467ccf2f72fda4f033f29eb9083448e37482a297ffbbf8c4a2cf5b89ce16c1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

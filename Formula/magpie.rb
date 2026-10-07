class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1107/magpie-cli-darwin-arm64"
      sha256 "135694bc4c04e110903e90571be32c2a203dc97b2c39d1fab3dbc5628fc5ce75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1107/magpie-cli-darwin-amd64"
      sha256 "1c2dc61c93153a845a2cc751836644480dd282d6d40bc1739a807aab4f3f7a88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1107/magpie-cli-linux-arm64"
      sha256 "b5029c2557e41b781d93f6ee4eae80fb062c54cca2ff3134b95e7480969e874f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1107/magpie-cli-linux-amd64"
      sha256 "8308c93f643cb562021c4edc60f3791ccf76c4867c53136e74fa948442973c29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

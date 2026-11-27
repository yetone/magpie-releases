class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4971/magpie-cli-darwin-arm64"
      sha256 "0937f1b0660b14d0f5219c4d0d97065fadb3bb7e538bc0778d402d46ce91e18f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4971/magpie-cli-darwin-amd64"
      sha256 "b3b3d42d2bb457e4ce860b2b2952d94954aa1a3574039df40bf9d922f19b13f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4971/magpie-cli-linux-arm64"
      sha256 "5ce8e5ba8f7289d8ce5d5acb17c10bff53977e9ba985055957cfd56e811a2e8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4971/magpie-cli-linux-amd64"
      sha256 "5d2bb9f6792a8d00cfe86d179df6dc148d1fb095a0280a56eae657c3c62ff92c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

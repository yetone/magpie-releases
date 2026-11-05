class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3041/magpie-cli-darwin-arm64"
      sha256 "9c3799ded4b439e35d8a997077e6b48dcef5b4b4a8ab324e37021db8e9d99190"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3041/magpie-cli-darwin-amd64"
      sha256 "e1520a4f4bdb4e382fa948bbdf7edd6c9c7aa046d9f0de53a3646557bc28723f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3041/magpie-cli-linux-arm64"
      sha256 "614819849eb43a58550cc672a7db872a3ad970ebaacd0611b4c594092b91d4e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3041/magpie-cli-linux-amd64"
      sha256 "e29b44f233cfd3af9d60e86e47f2b67c004888b3ddebd98aba6af42f1ece8500"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

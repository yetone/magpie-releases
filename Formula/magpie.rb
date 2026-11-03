class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2794/magpie-cli-darwin-arm64"
      sha256 "5efa5a3d7e2524eaf4e2d7bfbeac09409a416f117a64a9ea41dde9bf753a028b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2794/magpie-cli-darwin-amd64"
      sha256 "3e1aceb20680f6ced251ce616a033aabd259ee4f23664cf5b2b32cc90843eea3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2794/magpie-cli-linux-arm64"
      sha256 "658a4664f21d2cef15ff2ffa219eba4f1be8dca6f76ae141db5aba83de1163c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2794/magpie-cli-linux-amd64"
      sha256 "662aa8f69e2e4bafa7150cd410802ab82132d0e605f1ea19a93eb3e386ce245d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

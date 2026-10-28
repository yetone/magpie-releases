class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1906/magpie-cli-darwin-arm64"
      sha256 "a1529de2fc824609678e972e05b7671bc29aa1b7c3f42a14c7c6c2d8f4ae3373"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1906/magpie-cli-darwin-amd64"
      sha256 "dfe26ecb36daf0e1c63af46cbc54406d862aed682e9d29a50ba8a7ddf2900a0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1906/magpie-cli-linux-arm64"
      sha256 "411ae6ceb0dabf34afc85bd2a29c0fcfa9dacd15b23ea18c403b33c92f5b39fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1906/magpie-cli-linux-amd64"
      sha256 "8c7a3e5b773902e4a4e61d82ffd3183506e383a2ee9ccf8373308736d9b4b4ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

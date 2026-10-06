class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1090/magpie-cli-darwin-arm64"
      sha256 "1d426929f136d00a30f94a2b9b841ea1f3c43142eae9e00191708af0e60eac8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1090/magpie-cli-darwin-amd64"
      sha256 "ef4e5e62ad8d409d158f4c86df687c5bf3a3370d255a22b48f800d55083e4865"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1090/magpie-cli-linux-arm64"
      sha256 "0ad276afeed851ac70470c6e694c896cf65fc71cefbda021be7837297d2d8849"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1090/magpie-cli-linux-amd64"
      sha256 "7d0e535fbf122b84e32ea3ddd13b65c2b41f1e37f52fcb3978f4fd086a72c4cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

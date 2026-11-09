class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3352/magpie-cli-darwin-arm64"
      sha256 "ff350951c1f56fc12a7696b02a777d33f54b88af023af2f53c001521b66024e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3352/magpie-cli-darwin-amd64"
      sha256 "2352fc637ab36d8efd0f12f64ea73678abdaa3f3b5bba1f7bf8feaef25ad9ecb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3352/magpie-cli-linux-arm64"
      sha256 "ad1b8fab5868f4d771b64a7f11b5036aeadd39640c6793fd34ad6851f99263c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3352/magpie-cli-linux-amd64"
      sha256 "9bec79cdafb5aad78df63997925931b8676bb583e216b448c4d453413244e288"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

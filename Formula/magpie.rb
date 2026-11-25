class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4817/magpie-cli-darwin-arm64"
      sha256 "fdc883ae2710854b7f67b4f515e76808b8ca1370912aad7a481435d722a6d15b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4817/magpie-cli-darwin-amd64"
      sha256 "5de9a51e6150f56b1163c0af9a6325a654546151be7d5f06d62ff4bce6ff995c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4817/magpie-cli-linux-arm64"
      sha256 "948137b881bd5f7d2fa6f5e341e75e5f95626b7f91a1ccf1713a019e6bed61cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4817/magpie-cli-linux-amd64"
      sha256 "0c631a92b6eacc8cde84846faf11f4ea7ab836551e863dd33a0e01cca43b3a36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

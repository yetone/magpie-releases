class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4289/magpie-cli-darwin-arm64"
      sha256 "1e6cc0c618178b142696335b54ec329536f8efeed6111064a2c9ab87ca06407c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4289/magpie-cli-darwin-amd64"
      sha256 "5b6c7b35c9c4d767429b91ba34cb19cf4260196475189a0ff22231e29dcec502"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4289/magpie-cli-linux-arm64"
      sha256 "5cdb5b46bfe9f4d05f1920b6062e1161cf3bf4e68b1d4d702a201d5db0f4fbeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4289/magpie-cli-linux-amd64"
      sha256 "df9e911f55c25eea9f7244da73e0c13b5110134e62b372de91e4e8b3033745b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

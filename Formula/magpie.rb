class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2171/magpie-cli-darwin-arm64"
      sha256 "00b07bf8dd083301e790c02bdb00885fe246fd546d89a172cba7675092028cc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2171/magpie-cli-darwin-amd64"
      sha256 "bc064cdd6b47614038aedbaf2417adfeb19f44c19c5861310015f7357dab7c12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2171/magpie-cli-linux-arm64"
      sha256 "17b62dbe156e9ccb3a9f020223c1a767104df860ab50473c10302c1ea36fef5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2171/magpie-cli-linux-amd64"
      sha256 "0c589f08375bded4a68f37c2f4edd5a628dec1e40be577ecf3017bf956b2536b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

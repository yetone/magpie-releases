class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1027/magpie-cli-darwin-arm64"
      sha256 "88cd340eca50d3a16c702abaa94bdb0e4850e2124ddedd38c316a886ca23a91d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1027/magpie-cli-darwin-amd64"
      sha256 "f4c4abd01410fd76c6f3ac723757cb9107784a197a57226bb35f3e0375c83816"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1027/magpie-cli-linux-arm64"
      sha256 "2e1c11490ca720cf40a95eb92c86ffb34a175b12bff054a29d807d8496ee6dd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1027/magpie-cli-linux-amd64"
      sha256 "07e28458af3f581f8fe76ca73a4b550d246c8b2d94938438240f0969c907bf64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

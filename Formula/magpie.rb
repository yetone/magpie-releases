class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2055/magpie-cli-darwin-arm64"
      sha256 "572d67de7f3f67a9c2e6279e8737261bbf732d28aaac0df72253e92503f77316"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2055/magpie-cli-darwin-amd64"
      sha256 "919a36af6304b91f7476ade6ddbb538ac7a4b08423459aae6983ca059b8d7aa8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2055/magpie-cli-linux-arm64"
      sha256 "f3369313dce054ad8eccdf52a424c4dba47e398f31f72daac1982c76091956da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2055/magpie-cli-linux-amd64"
      sha256 "72b4f65a450344e18fd0cd158724131ccf9d59b54d873714fb465c5cbf1aa178"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2803/magpie-cli-darwin-arm64"
      sha256 "026723324fe93650a4deae89bde5d8adb9bb021a8e6b5fd7965b572d043269df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2803/magpie-cli-darwin-amd64"
      sha256 "dd702384e87ce99c12ffb4e6c1331ddb4df19c84da16d8f76ca1bfb146b62a00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2803/magpie-cli-linux-arm64"
      sha256 "4c3fd1bd4e359b2f524cb903b48ab1439d984c693316d4dd76015a69710f35f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2803/magpie-cli-linux-amd64"
      sha256 "ba784effa59bf42ae303fd45fe3146d5fd315a9d5704a543f6aa30340e763107"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3386/magpie-cli-darwin-arm64"
      sha256 "5cba57f44df39303aa16060d6c6b2a77ff7e7a00027b798f553b80dc391232a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3386/magpie-cli-darwin-amd64"
      sha256 "28629ab3a309ba57f10f72c5c6dc685fdf330dd57535df32670eb1a62e738a3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3386/magpie-cli-linux-arm64"
      sha256 "5ec1c44c0ebedd655c4795bb65a93b7f5571bb704c2ce81f214ae32f84f2b02e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3386/magpie-cli-linux-amd64"
      sha256 "1060739be099bf68db30b899f5d83d641fce3c345bae2a23f94283ae7960226d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4013/magpie-cli-darwin-arm64"
      sha256 "b78a906402a03d7af1ff2788ffc2dacb6034feca49bdb6576b64e5ec8b0572c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4013/magpie-cli-darwin-amd64"
      sha256 "9d942a168ce9c29049d7caef27287bec1449ff4264598870520723f4b4736107"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4013/magpie-cli-linux-arm64"
      sha256 "f9adf70be20a2c5cddc7dfe36557c9883b20d5a54b810f403d554257371bbdce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4013/magpie-cli-linux-amd64"
      sha256 "61ac636845bb9221f0ce665ba0494bea7cbc6581fbaee7e9abc39938bb87a9c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

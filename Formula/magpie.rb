class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4674/magpie-cli-darwin-arm64"
      sha256 "f875d8092fdb1e3a6a9d5f7c694e323ae6ae6b8cf05057ff36bac6d7cb63f483"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4674/magpie-cli-darwin-amd64"
      sha256 "3d12c4e6106d483aa40bab47362ca232e4bfc603006748c2f846ccbccb003060"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4674/magpie-cli-linux-arm64"
      sha256 "671106abda261a15702eec6d17c856af564f2540be4ba4574e0100753a967a20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4674/magpie-cli-linux-amd64"
      sha256 "5b3ff81d4dcc035ead6b3440f002a072b7fda24fb3b334ca0a8687bb9e6e92e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

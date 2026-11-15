class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4251/magpie-cli-darwin-arm64"
      sha256 "75cbe44fb9273b095ed68d5afa87867197f2e123ca364b0e4b95179d7e872bd6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4251/magpie-cli-darwin-amd64"
      sha256 "12832893fc959f0d491e1887af15f036b8d0871faddc735df8ba4d604fd9d06b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4251/magpie-cli-linux-arm64"
      sha256 "5e895b0e2293c678805ea6fad21ac4bd527ba49435234811de3da76f145e8f22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4251/magpie-cli-linux-amd64"
      sha256 "c1a1698b17a8219e5307bd4d58e4116cd1c2c9239b91b52b586dbd58e492bcc2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.143/magpie-cli-darwin-arm64"
      sha256 "ee39141653932cb28f3b055bd7e0c6f20687d4ef9e68dfacccfc2772ad08c2fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.143/magpie-cli-darwin-amd64"
      sha256 "b0fe4659fd1ff5744ce3752631ad90a501ab2249540e7950596889976c0daeaa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.143/magpie-cli-linux-arm64"
      sha256 "5c1d15c2682b905de8897541778dea27048fba2c615ce854ace9773e8a6948c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.143/magpie-cli-linux-amd64"
      sha256 "0d13055a930947e7ae815fcc889449bc27db2bb135788537e50e07828e47111c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

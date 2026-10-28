class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1881/magpie-cli-darwin-arm64"
      sha256 "a663e7c44b24ca005fdc5afa8afb4972201db82811d12735898f89c992e83f7f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1881/magpie-cli-darwin-amd64"
      sha256 "d998273c5002f51e938d8410f924af6d7b7147b90354df9064a152e7157a3294"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1881/magpie-cli-linux-arm64"
      sha256 "0df8be396723e078d2850ccabaae8ad4fae10df39a810008fdb76fb3b20e96ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1881/magpie-cli-linux-amd64"
      sha256 "7695c0396c86f44234468b799f69a58ebb73ac65c77728a93f328fd8b3e15e36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

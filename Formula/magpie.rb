class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3333/magpie-cli-darwin-arm64"
      sha256 "0c105a526d5fee7a15b1f2480308a7479ab55ba1d60dffdf8d12e5affec13427"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3333/magpie-cli-darwin-amd64"
      sha256 "4dc117ea3168b095ecc38369e056c3a124d89191058bed4ef6d40cdf335cd357"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3333/magpie-cli-linux-arm64"
      sha256 "c09bf07d520362dfbe92361a2b729a12f5f677ca45dce165f1e1f4c101f6fb36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3333/magpie-cli-linux-amd64"
      sha256 "b6acec5880dc71b5bcb57f53a35e3b67de41ea5a08fb80865493bf751d874515"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

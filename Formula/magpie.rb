class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1100/magpie-cli-darwin-arm64"
      sha256 "1cfd16fc86f2967453f4526f7c6e9813d6cb6cce0fc79baea6d8bf39ca669990"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1100/magpie-cli-darwin-amd64"
      sha256 "3d13787b6032bf1235e35adc9cb2d00fbe0de78d93995d536aff2374eb23662a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1100/magpie-cli-linux-arm64"
      sha256 "7bd405147f1e34cc347e9c8d6677fb1be31a7014978f31e20f9a536c0c9e01e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1100/magpie-cli-linux-amd64"
      sha256 "5ab11d88acad472bda4c9882fdc2f298dd9e26d0d28f301438998d42d90fe43f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

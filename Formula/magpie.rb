class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3395/magpie-cli-darwin-arm64"
      sha256 "110141dbd02c090072afb080662c2fc30ffa479ba93655052fdc591ef06d9d8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3395/magpie-cli-darwin-amd64"
      sha256 "a3437d29b401bc8212fafc9c927d735ed02873828a0fdf6e8e5810d9824c085c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3395/magpie-cli-linux-arm64"
      sha256 "73f7579bc00c577fe24e388c18cd160a90399b8b47980be73f56c0ba4afb3844"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3395/magpie-cli-linux-amd64"
      sha256 "db0016f4e0473ce1e1bc81beaa812f44120f00c242e73ae115c46f777e8e3487"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4304/magpie-cli-darwin-arm64"
      sha256 "99ad503c80922148a29fd3991bf110171dedd6b2ad98b78a999e8ef103065b4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4304/magpie-cli-darwin-amd64"
      sha256 "e0a2d5aa37914313462fc85417da4575293407832b61dcc77f436ee4c25760dd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4304/magpie-cli-linux-arm64"
      sha256 "e84aebdcdc4187f419a8541234ea721c75f1d9327011dc36b378dfad8643adbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4304/magpie-cli-linux-amd64"
      sha256 "116bf3821fc65ca87313f763a00ab6faf590db39becae34d42df5534e1bf8b9e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

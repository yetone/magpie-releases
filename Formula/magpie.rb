class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2342/magpie-cli-darwin-arm64"
      sha256 "1fa16eb74560b2818e5b864ce0789134d717945a20ac1387d03b4878cfaac309"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2342/magpie-cli-darwin-amd64"
      sha256 "6127b81adb130505a9748fb34b2fdc9db99e62be337deb88956e6d518b8c8dd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2342/magpie-cli-linux-arm64"
      sha256 "8ad59b9e3d24bfaef25ddb54cc432da6ede3a23e8fda9e78e475f8aa4461f2a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2342/magpie-cli-linux-amd64"
      sha256 "2a1d7be29457657bb06d5fc5fd41425071e20b90643354e8e0142d53764b5233"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

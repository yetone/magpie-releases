class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4271/magpie-cli-darwin-arm64"
      sha256 "be5cf183dee6053287b6488071432b2ecb5efddf73006d16a5c88c3f4ac53c79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4271/magpie-cli-darwin-amd64"
      sha256 "1ba5b22493f3b77bed9f63e6a60e225aa16fad38403d5c04d2a1d05ff192a04d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4271/magpie-cli-linux-arm64"
      sha256 "ff02b19ba6124d324d77de807edff8fe549a3417711bdcae82db2855768eaa7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4271/magpie-cli-linux-amd64"
      sha256 "1851272ea8bab98ed3e6bd223cd8c5042ffc62a135239e52f741ae41ec3509ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

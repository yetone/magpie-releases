class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.929/magpie-cli-darwin-arm64"
      sha256 "b807015b219570ff5436d5098a5a24a11429c5282b391b6c513f45994304a9f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.929/magpie-cli-darwin-amd64"
      sha256 "c55db28837bd1a0f85898cfd63ca74bff4747597e43e23041aaa7c34f4df8c76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.929/magpie-cli-linux-arm64"
      sha256 "23cd9922fdf88b9cf762041a378f04502febab1bd30c4dc0e7bb6005f5075bd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.929/magpie-cli-linux-amd64"
      sha256 "98a7e1bb2683200ceaac8b6d15192c78ff5e716171cf1712529e9168b52f416e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

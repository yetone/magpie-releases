class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1991/magpie-cli-darwin-arm64"
      sha256 "ba188f55ec510f190cd3e97d01ea20fb2951fda4650c4cbf26e76a8ed1c07a6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1991/magpie-cli-darwin-amd64"
      sha256 "353df39bb15f147a640c752215d3f8856a1e0da67acbe39aa48ce23037ee3666"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1991/magpie-cli-linux-arm64"
      sha256 "59e8fb7d5a02066c4f25b52cead7aad6e584680b79b0ecb04872207c22182a04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1991/magpie-cli-linux-amd64"
      sha256 "ce097894c1d0ebaae79bc46c26f8e46b8df12116fdf1897b2b37a2e2fded5735"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

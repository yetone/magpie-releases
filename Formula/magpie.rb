class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4153/magpie-cli-darwin-arm64"
      sha256 "2d39197183768240e2fae8aa0442518b1f98a4a00f9981059ff927f746b65916"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4153/magpie-cli-darwin-amd64"
      sha256 "a16681f5ad5251f2a217ce9d40c55c583f35364be3e2bba4bdb7639bb3f8e4db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4153/magpie-cli-linux-arm64"
      sha256 "518fff53729e3ea72f2bfdcd28a76e838dc7b49319ccbb209ab3e585ef0ace2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4153/magpie-cli-linux-amd64"
      sha256 "baf6546ba0853392ae9e6eb9825e6c28fdf48d32d661ac5f8772d6f8285d5f7a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

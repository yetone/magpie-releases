class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2828/magpie-cli-darwin-arm64"
      sha256 "4654e6e7b41ab9e35b83da02e02024ca75c0ca8b4329dc43c645792b968a260f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2828/magpie-cli-darwin-amd64"
      sha256 "b7c44a88bd12404340a36dd9a9ca76d1444c12975701545fb01e05de195e53c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2828/magpie-cli-linux-arm64"
      sha256 "ef546bbc38973b44c825ffc70f4e0040683705c50cc76c22415f22dc7b818feb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2828/magpie-cli-linux-amd64"
      sha256 "5fcd0597a46c08f3e3b19d459e49b234f301ae57b4b2aa7cd2bb877733cb95fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

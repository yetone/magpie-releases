class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4655/magpie-cli-darwin-arm64"
      sha256 "7eac9f1a892f9e3c6e17c4231bff1c5b3f654b7e5c15e4025dd402c62f5372f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4655/magpie-cli-darwin-amd64"
      sha256 "cb68e5c61886f1997c01be1967de0f628276b9cae31ea2c860bc545988e471cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4655/magpie-cli-linux-arm64"
      sha256 "17d138ba7c6992ec155b24193f35f998bb31c4eb8fce0994198feda9f5054096"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4655/magpie-cli-linux-amd64"
      sha256 "71f47bd67d2cc11a425be304141e75fa1644ebb53b7e5b8848019ec1c0b7da6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

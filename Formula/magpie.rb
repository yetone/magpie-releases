class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2316/magpie-cli-darwin-arm64"
      sha256 "75e5b4046159d655961caaf1e5f7ca5bbe332c1190c3df696523976488593cc0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2316/magpie-cli-darwin-amd64"
      sha256 "f653cc79a40b90182308d0b15acab8a26bccbc09f0513d9e4bc91bea8212f1bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2316/magpie-cli-linux-arm64"
      sha256 "b09e8340b42d5320af27be90763f4c57814832e21389eef31f0021605727cb02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2316/magpie-cli-linux-amd64"
      sha256 "04823e9f8746eb25253a86a28dc475941062cf1fb806659a066d24369e61027c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

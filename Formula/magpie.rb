class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4285/magpie-cli-darwin-arm64"
      sha256 "d4a023cd09bd142e38fe1897cd1747e7b718d8b1913e25657b16a962f1ac2087"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4285/magpie-cli-darwin-amd64"
      sha256 "c28ba57cd8981b391e03aeb405473126392ce6ec69b6fcf97fefa19f097d3159"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4285/magpie-cli-linux-arm64"
      sha256 "d60571625e689ddef24ba0819bbd4e02a18ba6a29a7e7e0af17b5b89e020b014"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4285/magpie-cli-linux-amd64"
      sha256 "2f21c1bde463eab04ab26aab56d0545064d78015f9ac84a2f4b72fac6d90f16d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

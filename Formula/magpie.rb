class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3264/magpie-cli-darwin-arm64"
      sha256 "ad2565c4135155b0c5cd04b331dd70276b1309a33dba01c8fc5d918775e49549"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3264/magpie-cli-darwin-amd64"
      sha256 "2be3fae0ed7560783233fc287bd74c5859f23ca84bea7c793342a4fd8209f7c8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3264/magpie-cli-linux-arm64"
      sha256 "425a541ade700f1fad3f25905031b0c7b57c22b5083488c799d021c6cc5c67b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3264/magpie-cli-linux-amd64"
      sha256 "bdf3dea426d2f4a42a6ce507202f38734653d2fd77c7a96b24f9d9362e337271"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

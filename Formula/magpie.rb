class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3861/magpie-cli-darwin-arm64"
      sha256 "795713b40fad236d87b0d47c79e383c7aba063c266a08f036ea9158c1c4e5fcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3861/magpie-cli-darwin-amd64"
      sha256 "54c6bf4e97b2e965e545e936dc3e7a6c0ef9dcf9c626a778ea6ca94c84c0d42a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3861/magpie-cli-linux-arm64"
      sha256 "7c2e396b3e2cd0df8edfa99e65b41d00d4f915c9a686d547c28de86567cd8794"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3861/magpie-cli-linux-amd64"
      sha256 "3540fc0f061a48535f176dc94b289899d24fb55502c73f720c450d50a1085ca1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

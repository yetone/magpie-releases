class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4244/magpie-cli-darwin-arm64"
      sha256 "c06c754a347dc51c1b67dd94b79c3ae5882f1153a8158a4e9ccdf9816cb8d2c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4244/magpie-cli-darwin-amd64"
      sha256 "cdb8c4fe314bb7f0e604a6c73d0469fd5871b32990d935244a65cc7f4fafec15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4244/magpie-cli-linux-arm64"
      sha256 "71a5487549f83a85984182c6c76f50a8b2bf29f1db801bffa5f4f6f1038d3be1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4244/magpie-cli-linux-amd64"
      sha256 "dd492f36c9a42c48802ced4f0223e0f9a5f70d94506f2219bde6b66c8672028b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

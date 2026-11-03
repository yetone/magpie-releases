class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2874/magpie-cli-darwin-arm64"
      sha256 "659609375a91f43b95257088fedfbd12245b1d2d918adcc91b4f1056fdb14f06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2874/magpie-cli-darwin-amd64"
      sha256 "9bf8ce9b41a0480748967ed9e8ef2f32736d5e5254244b00ef81ca62eb709d95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2874/magpie-cli-linux-arm64"
      sha256 "d1e38a004132877d3bd425498f1afbccace94b770e94c101f63f1646b8864cf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2874/magpie-cli-linux-amd64"
      sha256 "1fbb7faa59680f7069d47203bec30f53bbb78312c0ef6ee517e5b9ff90cf4f64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3032/magpie-cli-darwin-arm64"
      sha256 "5ae4b9d049a7b06fc88297bb4e051362d7be094850e25c161935b5f18277af3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3032/magpie-cli-darwin-amd64"
      sha256 "b91b08f63e062c264be00e7742496899d15440652011f14e0bbeec55af3de89b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3032/magpie-cli-linux-arm64"
      sha256 "f09ed0fed914b70f426939314fbef7d3a4ec5a08cdd80f5c8106907e5a6868be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3032/magpie-cli-linux-amd64"
      sha256 "fdd9a52f25f83ac3ba6d619e7e38d852325e29bb3eff9be281b67efbd0673f73"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

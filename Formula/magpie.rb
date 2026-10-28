class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1944/magpie-cli-darwin-arm64"
      sha256 "94791103064010226a9a4295ce0a86b4bcbc076cc75408c94d043c5d3f258431"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1944/magpie-cli-darwin-amd64"
      sha256 "82a3776e5e360d1194857992a8b5bf68154c7cae1bf4b86cd269aff354b8bbc9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1944/magpie-cli-linux-arm64"
      sha256 "75556f7df0aabc1ad82003c6f56dbfe2235a474504a29223948e9cfebaeffb75"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1944/magpie-cli-linux-amd64"
      sha256 "beacc97695ee8acb50e85c0ba182b52041a6ded0630e32ca3d56711b18891d48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

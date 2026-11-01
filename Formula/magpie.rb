class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2628/magpie-cli-darwin-arm64"
      sha256 "26aa41cbcaa75f506c4ad175e386e6dec6843c126ba25d89404bcbb0f68855df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2628/magpie-cli-darwin-amd64"
      sha256 "ee025e06eb789dbea38a67a40217a333111f29ca4cb1695a2dc017b101d9dd7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2628/magpie-cli-linux-arm64"
      sha256 "b01756ca503b0d94fed08b72faa1e2d79dfaeb7995b4f5dbe4f66147f487463a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2628/magpie-cli-linux-amd64"
      sha256 "5a6503e07e31877c7d2f656e071724f18226eed6396f446168403adfa3720eb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

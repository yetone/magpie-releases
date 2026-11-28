class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4989/magpie-cli-darwin-arm64"
      sha256 "b2161bf6edea1920f59fc063aaaabd836f4bf92172c1e3be150edbedf853cd1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4989/magpie-cli-darwin-amd64"
      sha256 "e89fb134e0530b4c505bb6ec4922b1c7863549028ca22dd5a3771f7d305ce716"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4989/magpie-cli-linux-arm64"
      sha256 "b46155ad3ce6f0d6432266ec3cd4a341d0d89acd97610e8dc86ff6dddf8333e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4989/magpie-cli-linux-amd64"
      sha256 "ba48a3602dac0ea5abf4bc962d3f315ff8ccca4dba945ded8dfecf18c95abd42"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

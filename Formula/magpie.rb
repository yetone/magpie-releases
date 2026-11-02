class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2746/magpie-cli-darwin-arm64"
      sha256 "5e40d75751bd526d70dd1555ea448ca9abf380d14214d39b09d04ff77cb6748f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2746/magpie-cli-darwin-amd64"
      sha256 "582b6ae2242ab7eba38f98efe42adf5490d260efae741c5707a08d55f1e66b5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2746/magpie-cli-linux-arm64"
      sha256 "d70c7503526cf0e2719cc396007cce9de8aa2f36b1dbfc3b6f65a059628f2eaf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2746/magpie-cli-linux-amd64"
      sha256 "02232e47ca6bfe02791b0ea8344656774f6bc341bb8b58d22db565e0918bc4a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

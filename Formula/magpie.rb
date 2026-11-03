class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2778/magpie-cli-darwin-arm64"
      sha256 "9616748b0a80da8c8ecc971956b1e840b431645e50130ca60e2be0864d3fe56a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2778/magpie-cli-darwin-amd64"
      sha256 "031e4595e5e526cee077212394629832a66c4a172f17fb10e9a61e3c876cf435"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2778/magpie-cli-linux-arm64"
      sha256 "112594f6ea5cfcf7560bf6d07a12655bb8e1f6891542edc1b2699bca37c8509c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2778/magpie-cli-linux-amd64"
      sha256 "268c38b5b2db26854b82c67f41bdb34098688931ec588cda744e2bacae79c62c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end

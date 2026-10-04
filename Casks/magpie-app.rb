cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.899"
  sha256 arm:   "b9cd185691cb86f494c10159a70a8df064352eefba967122dd7b01ed0193af0e",
         intel: "074c2fcff228c4aaaa9e98d204f870b50e25fc2636bbefb2c55104b9dbfa98ab"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

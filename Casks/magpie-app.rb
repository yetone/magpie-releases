cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.974"
  sha256 arm:   "17dac548f1e7a6cb7e56cb05333257d25f2f1f941b347a5b2db5e4f5ee678239",
         intel: "11ddc196121bdf43157ff90f6a91a42edc06f6fda6a3a76d940336455e8e4e2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

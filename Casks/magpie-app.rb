cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3999"
  sha256 arm:   "d97addfba47c2aa05bb299f58b9a8e453b6ebd42e3c6eabc16b5ebb58117beee",
         intel: "031d848722d45aeccaf7e1b08ffa80494b776870cdc3556ffcdfa205251d8464"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

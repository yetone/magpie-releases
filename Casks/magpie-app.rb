cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2281"
  sha256 arm:   "f2428602418345795f3f46c108beacace4c046a4ff23b9751544cae36a024b35",
         intel: "c3d1b6a8bd5f42de190e31adfb666c745234438ce4957ed36841a0e4a6223e1d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

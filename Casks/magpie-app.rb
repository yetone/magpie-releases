cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2151"
  sha256 arm:   "57246214f38326ff705384f435ec929314b7f0c20665e0b409def1e56f62a748",
         intel: "a5e8516f57a5ba46f436fa425ec893d426d7c7c1aa199b383b045791fa858ffa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2579"
  sha256 arm:   "0985c010eba7fb083a8c2170112cbd4ad410de52b74e46d208a5bcd15c2924cc",
         intel: "96d375d50dc65bbb8bfc4b52605429cfe4c2e54ae2341741f65257864e3b7358"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

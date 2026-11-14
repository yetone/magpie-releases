cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4218"
  sha256 arm:   "e6aa5f148fa0e871014a661a1b0eab25b64373f131173287abc7fb23b601e14a",
         intel: "34b2a67526844965dd347bdfb874f62ec5c79ea8aaeacd61ce5e68553e92f6fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

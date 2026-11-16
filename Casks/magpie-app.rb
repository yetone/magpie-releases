cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4332"
  sha256 arm:   "5563c56b0f8e44d8a758e5075cb53b84f04383fd42471ad21ba54b0f7b9cdeda",
         intel: "72ec461c0165532fa4320387b9115ba7c84b155c514c2f7fa7348ba42a9f7752"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

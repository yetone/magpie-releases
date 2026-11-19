cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4508"
  sha256 arm:   "635068926a3ff1b743ff5264822d18b46d7b4e23e3369f99e689c94f8c471543",
         intel: "148d8ed3ecd547d974c4c4b7228b20c3b70f287626f2b80c18212cb0ac4683cc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

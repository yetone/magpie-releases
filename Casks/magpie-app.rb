cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2690"
  sha256 arm:   "82bbebbbe7e60c3764161ec0d2fa165c7b04669180ae72cefbbad449691cf2f0",
         intel: "a4531908b159f9e66699c5b4d8b2e5eb85dfa166c04a3cefb9040f5bf0ddc664"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

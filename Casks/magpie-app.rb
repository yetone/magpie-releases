cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4572"
  sha256 arm:   "7c859d0eb29d0c8b2f8d01599b8c1d71dbdb4e94970cb42b4bf4ff489620abf2",
         intel: "8d21226fcc9a909f1cbb05956b59042e2081c15efe3f996359da26761ef39877"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

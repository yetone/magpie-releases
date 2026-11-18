cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4448"
  sha256 arm:   "41dbf29e930ea52263a3690709e5ab706c737394cd988798551141ec254dd389",
         intel: "bbb886b1fee959395185cf8e9badbd2de22acb9ccb98012e114b9db7710b3ded"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

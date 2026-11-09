cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3352"
  sha256 arm:   "04dbda17af178b3cc7962760b1fb0ad7553af28dce3928acbf4d25daf73aec58",
         intel: "d3169dee337635ce453624b94c72db75ebdd91d6381c8291bf00ab657a203da3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

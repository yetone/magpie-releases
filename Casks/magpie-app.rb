cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4975"
  sha256 arm:   "481ae463b06365c0fe936685abb4bc67875f1c5627f2a17a5403873578325018",
         intel: "4e915fde9abd9d91bbf8cf9711968189b919dcbe26e1fda15bac7cdcd9ba703c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

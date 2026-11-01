cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2627"
  sha256 arm:   "cf677bc3a94eb6fcc0f43af0847c2a3104736f64b51621cde9ca43041229a278",
         intel: "e251a55e5d7728f5724aae05268e525241ce3dec534988c54a659e202e5382d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

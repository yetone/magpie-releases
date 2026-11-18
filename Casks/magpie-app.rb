cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4502"
  sha256 arm:   "b123c2de2a318ad98f3121069ab7c560386a392ed0c658664591665e9973fe6a",
         intel: "850a313f4201369178f22eb7108f47f839592130f1bf3c30f3e60239e5fdad5f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end

cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1924"
  sha256 arm:   "f9cee7366cf64cd2218fd91b1c9bcbf8d7b818a99dc76c55a044e6916a9849a6",
         intel: "c8343e730a3f02d438987a7039478e93854da52927762a7550ef0634c218ef77"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
